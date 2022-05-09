; ModuleID = '/llk/IR_all_yes/drivers/i2c/i2c-stub.c_pt.bc'
source_filename = "../drivers/i2c/i2c-stub.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stub_chip = type { i8, [256 x i16], %struct.list_head, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.smbus_block_data = type { %struct.list_head, i8, i8, [32 x i8] }

@__this_module = external dso_local global %struct.module, align 128
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_chip_addr = internal constant %struct.kparam_array { i32 10, i32 2, ptr null, ptr @param_ops_ushort, ptr @chip_addr }, align 4
@__param_chip_addr = internal constant %struct.kernel_param { ptr @___asan_gen_.31, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_chip_addr } }, section "__param", align 4
@__UNIQUE_ID_chip_addrtype288 = internal constant [35 x i8] c"parmtype=chip_addr:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_chip_addr289 = internal constant [64 x i8] c"parm=chip_addr:Chip addresses (up to 10, between 0x03 and 0x77)\00", section ".modinfo", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@functionality = internal global { i32, [28 x i8] } { i32 209649664, [28 x i8] zeroinitializer }, align 32
@__param_functionality = internal constant %struct.kernel_param { ptr @___asan_gen_.28, ptr @__this_module, ptr @param_ops_ulong, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @functionality } }, section "__param", align 4
@__UNIQUE_ID_functionalitytype290 = internal constant [29 x i8] c"parmtype=functionality:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_functionality291 = internal constant [51 x i8] c"parm=functionality:Override functionality bitfield\00", section ".modinfo", align 1
@__param_arr_bank_reg = internal constant %struct.kparam_array { i32 10, i32 1, ptr null, ptr @param_ops_byte, ptr @bank_reg }, align 4
@__param_bank_reg = internal constant %struct.kernel_param { ptr @___asan_gen_.34, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_bank_reg } }, section "__param", align 4
@__UNIQUE_ID_bank_regtype292 = internal constant [32 x i8] c"parmtype=bank_reg:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_bank_reg293 = internal constant [28 x i8] c"parm=bank_reg:Bank register\00", section ".modinfo", align 1
@__param_arr_bank_mask = internal constant %struct.kparam_array { i32 10, i32 1, ptr null, ptr @param_ops_byte, ptr @bank_mask }, align 4
@__param_bank_mask = internal constant %struct.kernel_param { ptr @___asan_gen_.37, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_bank_mask } }, section "__param", align 4
@__UNIQUE_ID_bank_masktype294 = internal constant [33 x i8] c"parmtype=bank_mask:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_bank_mask295 = internal constant [31 x i8] c"parm=bank_mask:Bank value mask\00", section ".modinfo", align 1
@__param_arr_bank_start = internal constant %struct.kparam_array { i32 10, i32 1, ptr null, ptr @param_ops_byte, ptr @bank_start }, align 4
@__param_bank_start = internal constant %struct.kernel_param { ptr @___asan_gen_.40, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_bank_start } }, section "__param", align 4
@__UNIQUE_ID_bank_starttype296 = internal constant [34 x i8] c"parmtype=bank_start:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_bank_start297 = internal constant [38 x i8] c"parm=bank_start:First banked register\00", section ".modinfo", align 1
@__param_arr_bank_end = internal constant %struct.kparam_array { i32 10, i32 1, ptr null, ptr @param_ops_byte, ptr @bank_end }, align 4
@__param_bank_end = internal constant %struct.kernel_param { ptr @___asan_gen_.43, ptr @__this_module, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_bank_end } }, section "__param", align 4
@__UNIQUE_ID_bank_endtype298 = internal constant [32 x i8] c"parmtype=bank_end:array of byte\00", section ".modinfo", align 1
@__UNIQUE_ID_bank_end299 = internal constant [35 x i8] c"parm=bank_end:Last banked register\00", section ".modinfo", align 1
@__UNIQUE_ID_author315 = internal constant [48 x i8] c"author=Mark M. Hoffman <mhoffman@lightlink.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description316 = internal constant [28 x i8] c"description=I2C stub driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license317 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@chip_addr = internal global { [10 x i16], [44 x i8] } zeroinitializer, align 32
@param_ops_byte = external dso_local constant %struct.kernel_param_ops, align 4
@bank_reg = internal global { [10 x i8], [22 x i8] } zeroinitializer, align 32
@bank_mask = internal global { [10 x i8], [22 x i8] } zeroinitializer, align 32
@bank_start = internal global { [10 x i8], [22 x i8] } zeroinitializer, align 32
@bank_end = internal global { [10 x i8], [22 x i8] } zeroinitializer, align 32
@i2c_stub_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013i2c-stub: Please specify a chip address\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_stub_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/i2c/i2c-stub.c\00", [41 x i8] zeroinitializer }, align 32
@i2c_stub_init._entry_ptr = internal global ptr @i2c_stub_init._entry, section ".printk_index", align 4
@i2c_stub_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013i2c-stub: Invalid chip address 0x%02x\0A\00", [55 x i8] zeroinitializer }, align 32
@i2c_stub_init._entry_ptr.5 = internal global ptr @i2c_stub_init._entry.3, section ".printk_index", align 4
@i2c_stub_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016i2c-stub: Virtual chip at 0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@i2c_stub_init._entry_ptr.8 = internal global ptr @i2c_stub_init._entry.6, section ".printk_index", align 4
@stub_chips_nr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@stub_chips = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@stub_adapter = internal global { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr @__this_module, i32 129, ptr @smbus_algorithm, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"SMBus stub driver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@i2c_stub_allocate_banks.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 85, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_stub\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c_stub_allocate_banks\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Allocated %u banks of %u words each (registers 0x%02x to 0x%02x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"i2c-stub: Allocated %u banks of %u words each (registers 0x%02x to 0x%02x)\0A\00", [52 x i8] zeroinitializer }, align 32
@smbus_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr null, ptr null, ptr @stub_xfer, ptr null, ptr @stub_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 36, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stub_xfer\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smbus quick - addr 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"smbus byte - addr 0x%02x, wrote 0x%02x.\0A\00", [55 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.16, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"smbus byte - addr 0x%02x, read  0x%02x.\0A\00", [55 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.17, i8 0, i8 43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"smbus byte data - addr 0x%02x, wrote 0x%02x at 0x%02x.\0A\00", [40 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.18, i8 0, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"switching to bank %u.\0A\00", [41 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.19, i8 0, i8 47, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"smbus byte data - addr 0x%02x, read  0x%02x at 0x%02x.\0A\00", [40 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.20, i8 0, i8 50, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"smbus word data - addr 0x%02x, wrote 0x%04x at 0x%02x.\0A\00", [40 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.21, i8 0, i8 51, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"smbus word data - addr 0x%02x, read  0x%04x at 0x%02x.\0A\00", [40 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.22, i8 0, i8 56, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"i2c block data - addr 0x%02x, wrote %d bytes at 0x%02x.\0A\00", [39 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.23, i8 0, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"i2c block data - addr 0x%02x, read  %d bytes at 0x%02x.\0A\00", [39 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.24, i8 0, i8 67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"smbus block data - addr 0x%02x, wrote %d bytes at 0x%02x.\0A\00", [37 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.25, i8 0, i8 68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"SMBus block read command without prior block write not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.26, i8 0, i8 71, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"smbus block data - addr 0x%02x, read  %d bytes at 0x%02x.\0A\00", [37 x i8] zeroinitializer }, align 32
@stub_xfer.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.13, ptr @.str.2, ptr @.str.27, i8 0, i8 72, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported I2C/SMBus command\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 8]
@___asan_gen_.28 = private constant [14 x i8] c"functionality\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 40, i32 22 }
@___asan_gen_.31 = private constant [10 x i8] c"chip_addr\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 35, i32 23 }
@___asan_gen_.34 = private constant [9 x i8] c"bank_reg\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 46, i32 11 }
@___asan_gen_.37 = private constant [10 x i8] c"bank_mask\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 50, i32 11 }
@___asan_gen_.40 = private constant [11 x i8] c"bank_start\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 54, i32 11 }
@___asan_gen_.43 = private constant [9 x i8] c"bank_end\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 58, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 359, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 365, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 370, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"stub_chips_nr\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 87, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"stub_chips\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 86, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"stub_adapter\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 309, i32 27 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 338, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"smbus_algorithm\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 304, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 145, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 152, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 158, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 171, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 180, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 186, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 199, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 204, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 225, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 233, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 268, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 273, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 282, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [26 x i8] c"../drivers/i2c/i2c-stub.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 291, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author315, ptr @__UNIQUE_ID_bank_end299, ptr @__UNIQUE_ID_bank_endtype298, ptr @__UNIQUE_ID_bank_mask295, ptr @__UNIQUE_ID_bank_masktype294, ptr @__UNIQUE_ID_bank_reg293, ptr @__UNIQUE_ID_bank_regtype292, ptr @__UNIQUE_ID_bank_start297, ptr @__UNIQUE_ID_bank_starttype296, ptr @__UNIQUE_ID_chip_addr289, ptr @__UNIQUE_ID_chip_addrtype288, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_functionality291, ptr @__UNIQUE_ID_functionalitytype290, ptr @__UNIQUE_ID_license317, ptr @__param_bank_end, ptr @__param_bank_mask, ptr @__param_bank_reg, ptr @__param_bank_start, ptr @__param_chip_addr, ptr @__param_functionality, ptr @i2c_stub_init._entry, ptr @i2c_stub_init._entry.3, ptr @i2c_stub_init._entry.6, ptr @i2c_stub_init._entry_ptr, ptr @i2c_stub_init._entry_ptr.5, ptr @i2c_stub_init._entry_ptr.8, ptr @functionality, ptr @chip_addr, ptr @bank_reg, ptr @bank_mask, ptr @bank_start, ptr @bank_end, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @stub_chips_nr, ptr @stub_chips, ptr @stub_adapter, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @smbus_algorithm, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @functionality to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_reg to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_mask to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_start to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_end to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_stub_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_stub_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_stub_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_chips_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_chips to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stub_adapter to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smbus_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @chip_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool.not = icmp eq i16 %0, 0
  br i1 %tobool.not, label %do.end, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

land.rhs:                                         ; preds = %do.end21.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.068 = phi i32 [ %inc, %do.end21.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %arrayidx = getelementptr [10 x i16], ptr @chip_addr, i32 0, i32 %i.068
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool1.not = icmp eq i16 %2, 0
  br i1 %tobool1.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %3 = add i16 %2, -120
  call void @__sanitizer_cov_trace_const_cmp2(i16 -117, i16 %3)
  %4 = icmp ult i16 %3, -117
  br i1 %4, label %do.end13, label %do.end21

do.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv.le = zext i16 %2 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv.le) #10
  br label %cleanup

do.end21:                                         ; preds = %for.body
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv) #10
  %inc = add nuw nsw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.end21.for.end_crit_edge, label %do.end21.land.rhs_crit_edge

do.end21.land.rhs_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

do.end21.for.end_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %do.end21.for.end_crit_edge, %land.rhs.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 10, %do.end21.for.end_crit_edge ], [ %i.068, %land.rhs.for.end_crit_edge ]
  store i32 %i.0.lcssa, ptr @stub_chips_nr, align 4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.0.lcssa, i32 536) #7
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !139

kcalloc.exit.thread:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  store ptr null, ptr @stub_chips, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %for.end
  %7 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #11
  store ptr %call8.i.i, ptr @stub_chips, align 4
  %tobool27.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool27.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond30.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond30.preheader:                             ; preds = %if.end7.i.i
  %8 = load i32, ptr @stub_chips_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3169 = icmp sgt i32 %8, 0
  br i1 %cmp3169, label %for.cond30.preheader.for.body33_crit_edge, label %for.cond30.preheader.for.end45_crit_edge

for.cond30.preheader.for.end45_crit_edge:         ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end45

for.cond30.preheader.for.body33_crit_edge:        ; preds = %for.cond30.preheader
  br label %for.body33

for.body33:                                       ; preds = %for.inc43.for.body33_crit_edge, %for.cond30.preheader.for.body33_crit_edge
  %i.170 = phi i32 [ %inc44, %for.inc43.for.body33_crit_edge ], [ 0, %for.cond30.preheader.for.body33_crit_edge ]
  %9 = load ptr, ptr @stub_chips, align 4
  %smbus_blocks = getelementptr %struct.stub_chip, ptr %9, i32 %i.170, i32 2
  %10 = ptrtoint ptr %smbus_blocks to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %smbus_blocks, ptr %smbus_blocks, align 4
  %prev.i = getelementptr %struct.stub_chip, ptr %9, i32 %i.170, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %smbus_blocks, ptr %prev.i, align 4
  %arrayidx35 = getelementptr [10 x i8], ptr @bank_mask, i32 0, i32 %i.170
  %12 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool36.not = icmp eq i8 %13, 0
  br i1 %tobool36.not, label %for.body33.for.inc43_crit_edge, label %if.then37

for.body33.for.inc43_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc43

if.then37:                                        ; preds = %for.body33
  %call38 = tail call fastcc i32 @i2c_stub_allocate_banks(i32 noundef %i.170) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then37.for.inc43_crit_edge, label %if.then37.fail_free_crit_edge

if.then37.fail_free_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_free

if.then37.for.inc43_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc43

for.inc43:                                        ; preds = %if.then37.for.inc43_crit_edge, %for.body33.for.inc43_crit_edge
  %inc44 = add nuw nsw i32 %i.170, 1
  %14 = load i32, ptr @stub_chips_nr, align 4
  %cmp31 = icmp slt i32 %inc44, %14
  br i1 %cmp31, label %for.inc43.for.body33_crit_edge, label %for.inc43.for.end45_crit_edge

for.inc43.for.end45_crit_edge:                    ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end45

for.inc43.for.body33_crit_edge:                   ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

for.end45:                                        ; preds = %for.inc43.for.end45_crit_edge, %for.cond30.preheader.for.end45_crit_edge
  %call46 = tail call i32 @i2c_add_adapter(ptr noundef nonnull @stub_adapter) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %for.end45.cleanup_crit_edge, label %for.end45.fail_free_crit_edge

for.end45.fail_free_crit_edge:                    ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_free

for.end45.cleanup_crit_edge:                      ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail_free:                                        ; preds = %for.end45.fail_free_crit_edge, %if.then37.fail_free_crit_edge
  %ret.0 = phi i32 [ %call46, %for.end45.fail_free_crit_edge ], [ %call38, %if.then37.fail_free_crit_edge ]
  tail call fastcc void @i2c_stub_free()
  br label %cleanup

cleanup:                                          ; preds = %fail_free, %for.end45.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %do.end13, %do.end
  %retval.0 = phi i32 [ -22, %do.end13 ], [ %ret.0, %fail_free ], [ -19, %do.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %for.end45.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_adapter(ptr noundef nonnull @stub_adapter) #7
  tail call fastcc void @i2c_stub_free()
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_stub_allocate_banks(i32 noundef %i) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @stub_chips, align 4
  %arrayidx = getelementptr [10 x i8], ptr @bank_reg, i32 0, i32 %i
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %bank_reg = getelementptr %struct.stub_chip, ptr %0, i32 %i, i32 3
  %3 = ptrtoint ptr %bank_reg to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %bank_reg, align 4
  %arrayidx1 = getelementptr [10 x i8], ptr @bank_start, i32 0, i32 %i
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %bank_start = getelementptr %struct.stub_chip, ptr %0, i32 %i, i32 7
  %6 = ptrtoint ptr %bank_start to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %bank_start, align 4
  %arrayidx2 = getelementptr [10 x i8], ptr @bank_end, i32 0, i32 %i
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2, align 1
  %bank_end = getelementptr %struct.stub_chip, ptr %0, i32 %i, i32 8
  %9 = ptrtoint ptr %bank_end to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %bank_end, align 1
  %10 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %10 to i16
  %11 = load i8, ptr %arrayidx1, align 1
  %conv5 = zext i8 %11 to i16
  %sub = sub nsw i16 %conv, %conv5
  %add = add nsw i16 %sub, 1
  %bank_size = getelementptr %struct.stub_chip, ptr %0, i32 %i, i32 9
  %12 = ptrtoint ptr %bank_size to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %add, ptr %bank_size, align 2
  %arrayidx7 = getelementptr [10 x i8], ptr @bank_mask, i32 0, i32 %i
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7, align 1
  %bank_mask = getelementptr %struct.stub_chip, ptr %0, i32 %i, i32 5
  %conv964 = zext i8 %14 to i32
  %and65 = and i32 %conv964, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool.not66 = icmp eq i32 %and65, 0
  br i1 %tobool.not66, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %bank_shift = getelementptr %struct.stub_chip, ptr %0, i32 %i, i32 4
  %15 = ptrtoint ptr %bank_shift to i32
  call void @__asan_load1_noabort(i32 %15)
  %bank_shift.promoted = load i8, ptr %bank_shift, align 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %16 = phi i8 [ %bank_shift.promoted, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %storemerge67 = phi i8 [ %14, %while.body.lr.ph ], [ %17, %while.body.while.body_crit_edge ]
  %inc = add i8 %16, 1
  %17 = lshr i8 %storemerge67, 1
  %conv9 = zext i8 %17 to i32
  %and = and i32 %conv9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %bank_shift to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %inc, ptr %bank_shift, align 1
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %entry.while.end_crit_edge
  %storemerge.lcssa = phi i8 [ %17, %while.cond.while.end_crit_edge ], [ %14, %entry.while.end_crit_edge ]
  %conv9.lcssa = phi i32 [ %conv9, %while.cond.while.end_crit_edge ], [ %conv964, %entry.while.end_crit_edge ]
  %19 = ptrtoint ptr %bank_mask to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %storemerge.lcssa, ptr %bank_mask, align 2
  %conv16 = zext i16 %add to i32
  %mul = mul nuw nsw i32 %conv9.lcssa, %conv16
  %20 = shl nuw nsw i32 %mul, 1
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #11
  %bank_words = getelementptr %struct.stub_chip, ptr %0, i32 %i, i32 10
  %21 = ptrtoint ptr %bank_words to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i, ptr %bank_words, align 4
  %tobool18.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool18.not, label %while.end.cleanup_crit_edge, label %do.body

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @i2c_stub_allocate_banks.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@i2c_stub_allocate_banks, %cleanup)) #7
          to label %if.then25 [label %cleanup], !srcloc !140

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %bank_mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bank_mask, align 2
  %conv27 = zext i8 %23 to i32
  %24 = ptrtoint ptr %bank_size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %bank_size, align 2
  %conv29 = zext i16 %25 to i32
  %26 = ptrtoint ptr %bank_start to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bank_start, align 4
  %conv31 = zext i8 %27 to i32
  %28 = ptrtoint ptr %bank_end to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bank_end, align 1
  %conv33 = zext i8 %29 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @i2c_stub_allocate_banks.__UNIQUE_ID_ddebug314, ptr noundef nonnull @.str.12, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv31, i32 noundef %conv33) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %do.body, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %while.end.cleanup_crit_edge ], [ 0, %if.then25 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_stub_free() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @stub_chips_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @stub_chips, align 4
  %bank_words = getelementptr %struct.stub_chip, ptr %1, i32 %i.04, i32 10
  %2 = ptrtoint ptr %bank_words to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bank_words, align 4
  tail call void @kfree(ptr noundef %3) #7
  %inc = add nuw nsw i32 %i.04, 1
  %4 = load i32, ptr @stub_chips_nr, align 4
  %cmp = icmp slt i32 %inc, %4
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %5 = load ptr, ptr @stub_chips, align 4
  tail call void @kfree(ptr noundef %5) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stub_xfer(ptr noundef %adap, i16 noundef zeroext %addr, i16 noundef zeroext %flags, i8 noundef zeroext %read_write, i8 noundef zeroext %command, i32 noundef %size, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @stub_chips_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp742 = icmp sgt i32 %0, 0
  br i1 %cmp742, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0743 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [10 x i16], ptr @chip_addr, i32 0, i32 %i.0743
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %addr)
  %cmp2 = icmp eq i16 %2, %addr
  br i1 %cmp2, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0743, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end:                                          ; preds = %for.body
  %3 = load ptr, ptr @stub_chips, align 4
  %add.ptr = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743
  %tobool.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end5

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %for.end
  %4 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %do.body450 [
    i32 0, label %do.body
    i32 1, label %sw.bb13
    i32 2, label %sw.bb66
    i32 3, label %sw.bb163
    i32 8, label %sw.bb215
    i32 5, label %sw.bb316
  ]

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %cleanup)) #7
          to label %if.then10 [label %cleanup], !srcloc !140

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %conv11 = zext i16 %addr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv11) #7
  br label %cleanup

sw.bb13:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp15 = icmp eq i8 %read_write, 0
  br i1 %cmp15, label %if.then17, label %if.else

if.then17:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %command, ptr %add.ptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %cleanup)) #7
          to label %if.then32 [label %cleanup], !srcloc !140

if.then32:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %conv34 = zext i16 %addr to i32
  %conv35 = zext i8 %command to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug301, ptr noundef %dev33, ptr noundef nonnull @.str.15, i32 noundef %conv34, i32 noundef %conv35) #7
  br label %cleanup

if.else:                                          ; preds = %sw.bb13
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr, align 4
  %inc40 = add i8 %7, 1
  store i8 %inc40, ptr %add.ptr, align 4
  %bank_sel.i = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 6
  %8 = ptrtoint ptr %bank_sel.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bank_sel.i, align 1
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  %.pre.i = zext i8 %7 to i32
  br i1 %tobool.not.i, label %if.else.if.else.i_crit_edge, label %land.lhs.true.i

if.else.if.else.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.else
  %bank_start.i = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 7
  %10 = ptrtoint ptr %bank_start.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bank_start.i, align 4
  %conv2.i = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %7)
  %cmp.not.i = icmp ugt i8 %11, %7
  br i1 %cmp.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %bank_end.i = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 8
  %12 = ptrtoint ptr %bank_end.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bank_end.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %7)
  %cmp7.not.i = icmp ult i8 %13, %7
  br i1 %cmp7.not.i, label %land.lhs.true4.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true4.i.if.else.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  %bank_words.i = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 10
  %14 = ptrtoint ptr %bank_words.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bank_words.i, align 4
  %sub.i = add nsw i32 %conv.i, -1
  %bank_size.i = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 9
  %16 = ptrtoint ptr %bank_size.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %bank_size.i, align 2
  %conv11.i = zext i16 %17 to i32
  %mul.i = mul nsw i32 %sub.i, %conv11.i
  %add.ptr.i = getelementptr i16, ptr %15, i32 %mul.i
  %add.ptr13.i = getelementptr i16, ptr %add.ptr.i, i32 %.pre.i
  %idx.neg.i = sub nsw i32 0, %conv2.i
  %add.ptr16.i = getelementptr i16, ptr %add.ptr13.i, i32 %idx.neg.i
  br label %stub_get_wordp.exit

if.else.i:                                        ; preds = %land.lhs.true4.i.if.else.i_crit_edge, %land.lhs.true.i.if.else.i_crit_edge, %if.else.if.else.i_crit_edge
  %words.i = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 1
  %add.ptr18.i = getelementptr i16, ptr %words.i, i32 %.pre.i
  br label %stub_get_wordp.exit

stub_get_wordp.exit:                              ; preds = %if.else.i, %if.then.i
  %retval.0.i647 = phi ptr [ %add.ptr16.i, %if.then.i ], [ %add.ptr18.i, %if.else.i ]
  %18 = ptrtoint ptr %retval.0.i647 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %retval.0.i647, align 2
  %conv43 = trunc i16 %19 to i8
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv43, ptr %data, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %cleanup)) #7
          to label %if.then58 [label %cleanup], !srcloc !140

if.then58:                                        ; preds = %stub_get_wordp.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev59 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %conv60 = zext i16 %addr to i32
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %data, align 2
  %conv61 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug302, ptr noundef %dev59, ptr noundef nonnull @.str.16, i32 noundef %conv60, i32 noundef %conv61) #7
  br label %cleanup

sw.bb66:                                          ; preds = %if.end5
  %bank_sel.i648 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 6
  %23 = ptrtoint ptr %bank_sel.i648 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bank_sel.i648, align 1
  %conv.i649 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i650 = icmp eq i8 %24, 0
  %.pre.i651 = zext i8 %command to i32
  br i1 %tobool.not.i650, label %sw.bb66.if.else.i671_crit_edge, label %land.lhs.true.i655

sw.bb66.if.else.i671_crit_edge:                   ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i671

land.lhs.true.i655:                               ; preds = %sw.bb66
  %bank_start.i652 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 7
  %25 = ptrtoint ptr %bank_start.i652 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bank_start.i652, align 4
  %conv2.i653 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %command)
  %cmp.not.i654 = icmp ugt i8 %26, %command
  br i1 %cmp.not.i654, label %land.lhs.true.i655.if.else.i671_crit_edge, label %land.lhs.true4.i658

land.lhs.true.i655.if.else.i671_crit_edge:        ; preds = %land.lhs.true.i655
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i671

land.lhs.true4.i658:                              ; preds = %land.lhs.true.i655
  %bank_end.i656 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 8
  %27 = ptrtoint ptr %bank_end.i656 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bank_end.i656, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %command)
  %cmp7.not.i657 = icmp ult i8 %28, %command
  br i1 %cmp7.not.i657, label %land.lhs.true4.i658.if.else.i671_crit_edge, label %if.then.i668

land.lhs.true4.i658.if.else.i671_crit_edge:       ; preds = %land.lhs.true4.i658
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i671

if.then.i668:                                     ; preds = %land.lhs.true4.i658
  call void @__sanitizer_cov_trace_pc() #9
  %bank_words.i659 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 10
  %29 = ptrtoint ptr %bank_words.i659 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bank_words.i659, align 4
  %sub.i660 = add nsw i32 %conv.i649, -1
  %bank_size.i661 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 9
  %31 = ptrtoint ptr %bank_size.i661 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %bank_size.i661, align 2
  %conv11.i662 = zext i16 %32 to i32
  %mul.i663 = mul nsw i32 %sub.i660, %conv11.i662
  %add.ptr.i664 = getelementptr i16, ptr %30, i32 %mul.i663
  %add.ptr13.i665 = getelementptr i16, ptr %add.ptr.i664, i32 %.pre.i651
  %idx.neg.i666 = sub nsw i32 0, %conv2.i653
  %add.ptr16.i667 = getelementptr i16, ptr %add.ptr13.i665, i32 %idx.neg.i666
  br label %stub_get_wordp.exit673

if.else.i671:                                     ; preds = %land.lhs.true4.i658.if.else.i671_crit_edge, %land.lhs.true.i655.if.else.i671_crit_edge, %sw.bb66.if.else.i671_crit_edge
  %words.i669 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 1
  %add.ptr18.i670 = getelementptr i16, ptr %words.i669, i32 %.pre.i651
  br label %stub_get_wordp.exit673

stub_get_wordp.exit673:                           ; preds = %if.else.i671, %if.then.i668
  %retval.0.i672 = phi ptr [ %add.ptr16.i667, %if.then.i668 ], [ %add.ptr18.i670, %if.else.i671 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp69 = icmp eq i8 %read_write, 0
  %33 = ptrtoint ptr %retval.0.i672 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %retval.0.i672, align 2
  br i1 %cmp69, label %if.then71, label %if.else133

if.then71:                                        ; preds = %stub_get_wordp.exit673
  %35 = and i16 %34, -256
  %36 = ptrtoint ptr %retval.0.i672 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %retval.0.i672, align 2
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data, align 2
  %conv75 = zext i8 %38 to i16
  %or = or i16 %35, %conv75
  store i16 %or, ptr %retval.0.i672, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %do.end99)) #7
          to label %if.then92 [label %do.end99], !srcloc !140

if.then92:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  %dev93 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %conv94 = zext i16 %addr to i32
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %data, align 2
  %conv95 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug303, ptr noundef %dev93, ptr noundef nonnull @.str.17, i32 noundef %conv94, i32 noundef %conv95, i32 noundef %.pre.i651) #7
  br label %do.end99

do.end99:                                         ; preds = %if.then92, %if.then71
  %bank_words = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 10
  %41 = ptrtoint ptr %bank_words to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bank_words, align 4
  %tobool100.not = icmp eq ptr %42, null
  br i1 %tobool100.not, label %do.end99.if.end159_crit_edge, label %land.lhs.true

do.end99.if.end159_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

land.lhs.true:                                    ; preds = %do.end99
  %bank_reg = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 3
  %43 = ptrtoint ptr %bank_reg to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bank_reg, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %command)
  %cmp103 = icmp eq i8 %44, %command
  br i1 %cmp103, label %if.then105, label %land.lhs.true.if.end159_crit_edge

land.lhs.true.if.end159_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end159

if.then105:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %data, align 2
  %conv106 = zext i8 %46 to i32
  %bank_shift = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 4
  %47 = ptrtoint ptr %bank_shift to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bank_shift, align 1
  %conv107 = zext i8 %48 to i32
  %shr = lshr i32 %conv106, %conv107
  %bank_mask = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 5
  %49 = ptrtoint ptr %bank_mask to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bank_mask, align 2
  %51 = trunc i32 %shr to i8
  %conv110 = and i8 %50, %51
  %52 = ptrtoint ptr %bank_sel.i648 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv110, ptr %bank_sel.i648, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %if.end159)) #7
          to label %if.then125 [label %if.end159], !srcloc !140

if.then125:                                       ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  %dev126 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %53 = ptrtoint ptr %bank_sel.i648 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bank_sel.i648, align 1
  %conv128 = zext i8 %54 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug304, ptr noundef %dev126, ptr noundef nonnull @.str.18, i32 noundef %conv128) #7
  br label %if.end159

if.else133:                                       ; preds = %stub_get_wordp.exit673
  call void @__sanitizer_cov_trace_pc() #9
  %conv136 = trunc i16 %34 to i8
  %55 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv136, ptr %data, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %if.end159)) #7
          to label %if.then151 [label %if.end159], !srcloc !140

if.then151:                                       ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #9
  %dev152 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %conv153 = zext i16 %addr to i32
  %56 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %data, align 2
  %conv154 = zext i8 %57 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug305, ptr noundef %dev152, ptr noundef nonnull @.str.19, i32 noundef %conv153, i32 noundef %conv154, i32 noundef %.pre.i651) #7
  br label %if.end159

if.end159:                                        ; preds = %if.then151, %if.else133, %if.then125, %if.then105, %land.lhs.true.if.end159_crit_edge, %do.end99.if.end159_crit_edge
  %add = add i8 %command, 1
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %add, ptr %add.ptr, align 4
  br label %cleanup

sw.bb163:                                         ; preds = %if.end5
  %bank_sel.i674 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 6
  %59 = ptrtoint ptr %bank_sel.i674 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bank_sel.i674, align 1
  %conv.i675 = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i676 = icmp eq i8 %60, 0
  %.pre.i677 = zext i8 %command to i32
  br i1 %tobool.not.i676, label %sw.bb163.if.else.i697_crit_edge, label %land.lhs.true.i681

sw.bb163.if.else.i697_crit_edge:                  ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i697

land.lhs.true.i681:                               ; preds = %sw.bb163
  %bank_start.i678 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 7
  %61 = ptrtoint ptr %bank_start.i678 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bank_start.i678, align 4
  %conv2.i679 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %62, i8 %command)
  %cmp.not.i680 = icmp ugt i8 %62, %command
  br i1 %cmp.not.i680, label %land.lhs.true.i681.if.else.i697_crit_edge, label %land.lhs.true4.i684

land.lhs.true.i681.if.else.i697_crit_edge:        ; preds = %land.lhs.true.i681
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i697

land.lhs.true4.i684:                              ; preds = %land.lhs.true.i681
  %bank_end.i682 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 8
  %63 = ptrtoint ptr %bank_end.i682 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %bank_end.i682, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %64, i8 %command)
  %cmp7.not.i683 = icmp ult i8 %64, %command
  br i1 %cmp7.not.i683, label %land.lhs.true4.i684.if.else.i697_crit_edge, label %if.then.i694

land.lhs.true4.i684.if.else.i697_crit_edge:       ; preds = %land.lhs.true4.i684
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i697

if.then.i694:                                     ; preds = %land.lhs.true4.i684
  call void @__sanitizer_cov_trace_pc() #9
  %bank_words.i685 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 10
  %65 = ptrtoint ptr %bank_words.i685 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bank_words.i685, align 4
  %sub.i686 = add nsw i32 %conv.i675, -1
  %bank_size.i687 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 9
  %67 = ptrtoint ptr %bank_size.i687 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %bank_size.i687, align 2
  %conv11.i688 = zext i16 %68 to i32
  %mul.i689 = mul nsw i32 %sub.i686, %conv11.i688
  %add.ptr.i690 = getelementptr i16, ptr %66, i32 %mul.i689
  %add.ptr13.i691 = getelementptr i16, ptr %add.ptr.i690, i32 %.pre.i677
  %idx.neg.i692 = sub nsw i32 0, %conv2.i679
  %add.ptr16.i693 = getelementptr i16, ptr %add.ptr13.i691, i32 %idx.neg.i692
  br label %stub_get_wordp.exit699

if.else.i697:                                     ; preds = %land.lhs.true4.i684.if.else.i697_crit_edge, %land.lhs.true.i681.if.else.i697_crit_edge, %sw.bb163.if.else.i697_crit_edge
  %words.i695 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 1
  %add.ptr18.i696 = getelementptr i16, ptr %words.i695, i32 %.pre.i677
  br label %stub_get_wordp.exit699

stub_get_wordp.exit699:                           ; preds = %if.else.i697, %if.then.i694
  %retval.0.i698 = phi ptr [ %add.ptr16.i693, %if.then.i694 ], [ %add.ptr18.i696, %if.else.i697 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp166 = icmp eq i8 %read_write, 0
  br i1 %cmp166, label %if.then168, label %if.else191

if.then168:                                       ; preds = %stub_get_wordp.exit699
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %data, align 2
  %71 = ptrtoint ptr %retval.0.i698 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %retval.0.i698, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %cleanup)) #7
          to label %if.then183 [label %cleanup], !srcloc !140

if.then183:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #9
  %dev184 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %conv185 = zext i16 %addr to i32
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %data, align 2
  %conv186 = zext i16 %73 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug306, ptr noundef %dev184, ptr noundef nonnull @.str.20, i32 noundef %conv185, i32 noundef %conv186, i32 noundef %.pre.i677) #7
  br label %cleanup

if.else191:                                       ; preds = %stub_get_wordp.exit699
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %retval.0.i698 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %retval.0.i698, align 2
  %76 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %data, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %cleanup)) #7
          to label %if.then206 [label %cleanup], !srcloc !140

if.then206:                                       ; preds = %if.else191
  call void @__sanitizer_cov_trace_pc() #9
  %dev207 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %conv208 = zext i16 %addr to i32
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %data, align 2
  %conv209 = zext i16 %78 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug307, ptr noundef %dev207, ptr noundef nonnull @.str.21, i32 noundef %conv208, i32 noundef %conv209, i32 noundef %.pre.i677) #7
  br label %cleanup

sw.bb215:                                         ; preds = %if.end5
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %data, align 2
  %conv217 = zext i8 %80 to i32
  %conv218 = zext i8 %command to i32
  %sub = sub nuw nsw i32 256, %conv218
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv217)
  %cmp219 = icmp ult i32 %sub, %conv217
  br i1 %cmp219, label %if.then221, label %sw.bb215.if.end226_crit_edge

sw.bb215.if.end226_crit_edge:                     ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end226

if.then221:                                       ; preds = %sw.bb215
  call void @__sanitizer_cov_trace_pc() #9
  %conv224 = trunc i32 %sub to i8
  %81 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv224, ptr %data, align 2
  br label %if.end226

if.end226:                                        ; preds = %if.then221, %sw.bb215.if.end226_crit_edge
  %82 = phi i8 [ %conv224, %if.then221 ], [ %80, %sw.bb215.if.end226_crit_edge ]
  %conv228 = zext i8 %82 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp230 = icmp eq i8 %read_write, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp234750.not = icmp eq i8 %82, 0
  br i1 %cmp230, label %for.cond233.preheader, label %for.cond278.preheader

for.cond278.preheader:                            ; preds = %if.end226
  br i1 %cmp234750.not, label %for.cond278.preheader.do.body294_crit_edge, label %for.cond278.preheader.for.body281_crit_edge

for.cond278.preheader.for.body281_crit_edge:      ; preds = %for.cond278.preheader
  br label %for.body281

for.cond278.preheader.do.body294_crit_edge:       ; preds = %for.cond278.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body294

for.cond233.preheader:                            ; preds = %if.end226
  br i1 %cmp234750.not, label %for.cond233.preheader.do.body256_crit_edge, label %for.cond233.preheader.for.body236_crit_edge

for.cond233.preheader.for.body236_crit_edge:      ; preds = %for.cond233.preheader
  br label %for.body236

for.cond233.preheader.do.body256_crit_edge:       ; preds = %for.cond233.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body256

for.body236:                                      ; preds = %for.body236.for.body236_crit_edge, %for.cond233.preheader.for.body236_crit_edge
  %i.1751 = phi i32 [ %add243, %for.body236.for.body236_crit_edge ], [ 0, %for.cond233.preheader.for.body236_crit_edge ]
  %add238 = add nuw nsw i32 %i.1751, %conv218
  %arrayidx239 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 1, i32 %add238
  %83 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %arrayidx239, align 2
  %85 = and i16 %84, -256
  store i16 %85, ptr %arrayidx239, align 2
  %add243 = add nuw nsw i32 %i.1751, 1
  %arrayidx244 = getelementptr [34 x i8], ptr %data, i32 0, i32 %add243
  %86 = ptrtoint ptr %arrayidx244 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx244, align 1
  %conv245 = zext i8 %87 to i16
  %or251 = or i16 %85, %conv245
  store i16 %or251, ptr %arrayidx239, align 2
  %exitcond759.not = icmp eq i32 %add243, %conv228
  br i1 %exitcond759.not, label %for.body236.do.body256_crit_edge, label %for.body236.for.body236_crit_edge

for.body236.for.body236_crit_edge:                ; preds = %for.body236
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body236

for.body236.do.body256_crit_edge:                 ; preds = %for.body236
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body256

do.body256:                                       ; preds = %for.body236.do.body256_crit_edge, %for.cond233.preheader.do.body256_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %cleanup)) #7
          to label %if.then270 [label %cleanup], !srcloc !140

if.then270:                                       ; preds = %do.body256
  call void @__sanitizer_cov_trace_pc() #9
  %dev271 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %conv272 = zext i16 %addr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug308, ptr noundef %dev271, ptr noundef nonnull @.str.22, i32 noundef %conv272, i32 noundef %conv228, i32 noundef %conv218) #7
  br label %cleanup

for.body281:                                      ; preds = %for.body281.for.body281_crit_edge, %for.cond278.preheader.for.body281_crit_edge
  %i.2749 = phi i32 [ %add289, %for.body281.for.body281_crit_edge ], [ 0, %for.cond278.preheader.for.body281_crit_edge ]
  %add284 = add nuw nsw i32 %i.2749, %conv218
  %arrayidx285 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 1, i32 %add284
  %88 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx285, align 2
  %conv288 = trunc i16 %89 to i8
  %add289 = add nuw nsw i32 %i.2749, 1
  %arrayidx290 = getelementptr [34 x i8], ptr %data, i32 0, i32 %add289
  %90 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv288, ptr %arrayidx290, align 1
  %exitcond758.not = icmp eq i32 %add289, %conv228
  br i1 %exitcond758.not, label %for.body281.do.body294_crit_edge, label %for.body281.for.body281_crit_edge

for.body281.for.body281_crit_edge:                ; preds = %for.body281
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body281

for.body281.do.body294_crit_edge:                 ; preds = %for.body281
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body294

do.body294:                                       ; preds = %for.body281.do.body294_crit_edge, %for.cond278.preheader.do.body294_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %cleanup)) #7
          to label %if.then308 [label %cleanup], !srcloc !140

if.then308:                                       ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #9
  %dev309 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %conv310 = zext i16 %addr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug309, ptr noundef %dev309, ptr noundef nonnull @.str.23, i32 noundef %conv310, i32 noundef %conv228, i32 noundef %conv218) #7
  br label %cleanup

sw.bb316:                                         ; preds = %if.end5
  %dev317 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  %smbus_blocks.i = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %sw.bb316
  %b.0.in.i = phi ptr [ %smbus_blocks.i, %sw.bb316 ], [ %b.0.i, %for.body.i.for.cond.i_crit_edge ]
  %91 = ptrtoint ptr %b.0.in.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %b.0.i = load ptr, ptr %b.0.in.i, align 4
  %cmp.not.i700 = icmp eq ptr %b.0.i, %smbus_blocks.i
  br i1 %cmp.not.i700, label %stub_find_block.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %command2.i = getelementptr inbounds %struct.smbus_block_data, ptr %b.0.i, i32 0, i32 1
  %92 = ptrtoint ptr %command2.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %command2.i, align 4
  %cmp4.i = icmp eq i8 %93, %command
  br i1 %cmp4.i, label %stub_find_block.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

stub_find_block.exit:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp320 = icmp eq i8 %read_write, 0
  br i1 %cmp320, label %if.then322, label %if.else389

stub_find_block.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read_write)
  %cmp320719 = icmp eq i8 %read_write, 0
  br i1 %cmp320719, label %if.then322.thread, label %stub_find_block.exit.thread.do.body393_crit_edge

stub_find_block.exit.thread.do.body393_crit_edge: ; preds = %stub_find_block.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body393

if.then322:                                       ; preds = %stub_find_block.exit
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %data, align 2
  %96 = add i8 %95, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %96)
  %97 = icmp ult i8 %96, -32
  br i1 %97, label %if.then322.cleanup_crit_edge, label %if.end330

if.then322.cleanup_crit_edge:                     ; preds = %if.then322
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then322.thread:                                ; preds = %stub_find_block.exit.thread
  %98 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %data, align 2
  %conv324728 = zext i8 %99 to i32
  %100 = add i8 %99, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %100)
  %101 = icmp ult i8 %100, -32
  br i1 %101, label %if.then322.thread.cleanup_crit_edge, label %if.then322.thread.if.then333_crit_edge

if.then322.thread.if.then333_crit_edge:           ; preds = %if.then322.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then333

if.then322.thread.cleanup_crit_edge:              ; preds = %if.then322.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end330:                                        ; preds = %if.then322
  %conv324 = zext i8 %95 to i32
  %cmp331 = icmp eq ptr %b.0.i, null
  br i1 %cmp331, label %if.end330.if.then333_crit_edge, label %if.end330.if.end340_crit_edge

if.end330.if.end340_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end340

if.end330.if.then333_crit_edge:                   ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then333

if.then333:                                       ; preds = %if.end330.if.then333_crit_edge, %if.then322.thread.if.then333_crit_edge
  %102 = phi i8 [ %95, %if.end330.if.then333_crit_edge ], [ %99, %if.then322.thread.if.then333_crit_edge ]
  %conv324733738 = phi i32 [ %conv324, %if.end330.if.then333_crit_edge ], [ %conv324728, %if.then322.thread.if.then333_crit_edge ]
  %call335 = tail call fastcc ptr @stub_find_block(ptr noundef %dev317, ptr noundef nonnull %add.ptr, i8 noundef zeroext %command, i1 noundef zeroext true)
  %cmp336 = icmp eq ptr %call335, null
  br i1 %cmp336, label %if.then333.cleanup_crit_edge, label %if.then333.if.end340_crit_edge

if.then333.if.end340_crit_edge:                   ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end340

if.then333.cleanup_crit_edge:                     ; preds = %if.then333
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end340:                                        ; preds = %if.then333.if.end340_crit_edge, %if.end330.if.end340_crit_edge
  %103 = phi i8 [ %102, %if.then333.if.end340_crit_edge ], [ %95, %if.end330.if.end340_crit_edge ]
  %conv324733737 = phi i32 [ %conv324733738, %if.then333.if.end340_crit_edge ], [ %conv324, %if.end330.if.end340_crit_edge ]
  %b.0 = phi ptr [ %call335, %if.then333.if.end340_crit_edge ], [ %b.0.i, %if.end330.if.end340_crit_edge ]
  %len341 = getelementptr inbounds %struct.smbus_block_data, ptr %b.0, i32 0, i32 2
  %104 = ptrtoint ptr %len341 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %len341, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %103, i8 %105)
  %cmp343 = icmp ugt i8 %103, %105
  br i1 %cmp343, label %if.then345, label %if.end340.if.end348_crit_edge

if.end340.if.end348_crit_edge:                    ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end348

if.then345:                                       ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %len341 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %103, ptr %len341, align 1
  br label %if.end348

if.end348:                                        ; preds = %if.then345, %if.end340.if.end348_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv324733737)
  %cmp350746.not = icmp eq i32 %conv324733737, 0
  br i1 %cmp350746.not, label %if.end348.for.end358_crit_edge, label %if.end348.for.body352_crit_edge

if.end348.for.body352_crit_edge:                  ; preds = %if.end348
  br label %for.body352

if.end348.for.end358_crit_edge:                   ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end358

for.body352:                                      ; preds = %for.body352.for.body352_crit_edge, %if.end348.for.body352_crit_edge
  %i.3747 = phi i32 [ %add353, %for.body352.for.body352_crit_edge ], [ 0, %if.end348.for.body352_crit_edge ]
  %add353 = add nuw nsw i32 %i.3747, 1
  %arrayidx354 = getelementptr [34 x i8], ptr %data, i32 0, i32 %add353
  %107 = ptrtoint ptr %arrayidx354 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx354, align 1
  %arrayidx355 = getelementptr %struct.smbus_block_data, ptr %b.0, i32 0, i32 3, i32 %i.3747
  %109 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %arrayidx355, align 1
  %exitcond757.not = icmp eq i32 %add353, %conv324733737
  br i1 %exitcond757.not, label %for.body352.for.end358_crit_edge, label %for.body352.for.body352_crit_edge

for.body352.for.body352_crit_edge:                ; preds = %for.body352
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body352

for.body352.for.end358_crit_edge:                 ; preds = %for.body352
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end358

for.end358:                                       ; preds = %for.body352.for.end358_crit_edge, %if.end348.for.end358_crit_edge
  %block359 = getelementptr inbounds %struct.smbus_block_data, ptr %b.0, i32 0, i32 3
  %110 = ptrtoint ptr %block359 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %block359, align 2
  %conv361 = zext i8 %111 to i16
  %shl = shl nuw i16 %conv361, 8
  %112 = ptrtoint ptr %len341 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %len341, align 1
  %conv363 = zext i8 %113 to i16
  %or364 = or i16 %shl, %conv363
  %idxprom = zext i8 %command to i32
  %arrayidx367 = getelementptr %struct.stub_chip, ptr %3, i32 %i.0743, i32 1, i32 %idxprom
  %114 = ptrtoint ptr %arrayidx367 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %or364, ptr %arrayidx367, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %cleanup)) #7
          to label %if.then382 [label %cleanup], !srcloc !140

if.then382:                                       ; preds = %for.end358
  call void @__sanitizer_cov_trace_pc() #9
  %conv384 = zext i16 %addr to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug310, ptr noundef %dev317, ptr noundef nonnull @.str.24, i32 noundef %conv384, i32 noundef %conv324733737, i32 noundef %idxprom) #7
  br label %cleanup

if.else389:                                       ; preds = %stub_find_block.exit
  %cmp390 = icmp eq ptr %b.0.i, null
  br i1 %cmp390, label %if.else389.do.body393_crit_edge, label %if.end412

if.else389.do.body393_crit_edge:                  ; preds = %if.else389
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body393

do.body393:                                       ; preds = %if.else389.do.body393_crit_edge, %stub_find_block.exit.thread.do.body393_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %cleanup)) #7
          to label %if.then407 [label %cleanup], !srcloc !140

if.then407:                                       ; preds = %do.body393
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug311, ptr noundef %dev317, ptr noundef nonnull @.str.25) #7
  br label %cleanup

if.end412:                                        ; preds = %if.else389
  %len413 = getelementptr inbounds %struct.smbus_block_data, ptr %b.0.i, i32 0, i32 2
  %115 = ptrtoint ptr %len413 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %len413, align 1
  %conv414 = zext i8 %116 to i32
  %117 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %cmp418744.not = icmp eq i8 %116, 0
  br i1 %cmp418744.not, label %if.end412.do.body428_crit_edge, label %if.end412.for.body420_crit_edge

if.end412.for.body420_crit_edge:                  ; preds = %if.end412
  br label %for.body420

if.end412.do.body428_crit_edge:                   ; preds = %if.end412
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body428

for.body420:                                      ; preds = %for.body420.for.body420_crit_edge, %if.end412.for.body420_crit_edge
  %i.4745 = phi i32 [ %add423, %for.body420.for.body420_crit_edge ], [ 0, %if.end412.for.body420_crit_edge ]
  %arrayidx422 = getelementptr %struct.smbus_block_data, ptr %b.0.i, i32 0, i32 3, i32 %i.4745
  %118 = ptrtoint ptr %arrayidx422 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx422, align 1
  %add423 = add nuw nsw i32 %i.4745, 1
  %arrayidx424 = getelementptr [34 x i8], ptr %data, i32 0, i32 %add423
  %120 = ptrtoint ptr %arrayidx424 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx424, align 1
  %exitcond755.not = icmp eq i32 %add423, %conv414
  br i1 %exitcond755.not, label %for.body420.do.body428_crit_edge, label %for.body420.for.body420_crit_edge

for.body420.for.body420_crit_edge:                ; preds = %for.body420
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body420

for.body420.do.body428_crit_edge:                 ; preds = %for.body420
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body428

do.body428:                                       ; preds = %for.body420.do.body428_crit_edge, %if.end412.do.body428_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %cleanup)) #7
          to label %if.then442 [label %cleanup], !srcloc !140

if.then442:                                       ; preds = %do.body428
  call void @__sanitizer_cov_trace_pc() #9
  %conv444 = zext i16 %addr to i32
  %conv445 = zext i8 %command to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug312, ptr noundef %dev317, ptr noundef nonnull @.str.26, i32 noundef %conv444, i32 noundef %conv414, i32 noundef %conv445) #7
  br label %cleanup

do.body450:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stub_xfer.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stub_xfer, %cleanup)) #7
          to label %if.then464 [label %cleanup], !srcloc !140

if.then464:                                       ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #9
  %dev465 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stub_xfer.__UNIQUE_ID_ddebug313, ptr noundef %dev465, ptr noundef nonnull @.str.27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then464, %do.body450, %if.then442, %do.body428, %if.then407, %do.body393, %if.then382, %for.end358, %if.then333.cleanup_crit_edge, %if.then322.thread.cleanup_crit_edge, %if.then322.cleanup_crit_edge, %if.then308, %do.body294, %if.then270, %do.body256, %if.then206, %if.else191, %if.then183, %if.then168, %if.end159, %if.then58, %stub_get_wordp.exit, %if.then32, %if.then17, %if.then10, %do.body, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %for.end.cleanup_crit_edge ], [ 0, %if.end159 ], [ 0, %if.then10 ], [ 0, %if.then58 ], [ 0, %if.then32 ], [ 0, %if.then206 ], [ 0, %if.then183 ], [ 0, %if.then308 ], [ 0, %if.then270 ], [ -22, %if.then322.cleanup_crit_edge ], [ -12, %if.then333.cleanup_crit_edge ], [ -95, %if.then407 ], [ 0, %if.then442 ], [ 0, %if.then382 ], [ -95, %if.then464 ], [ 0, %do.body ], [ 0, %if.then17 ], [ 0, %stub_get_wordp.exit ], [ 0, %if.then168 ], [ 0, %if.else191 ], [ 0, %do.body256 ], [ 0, %do.body294 ], [ -22, %if.then322.thread.cleanup_crit_edge ], [ 0, %for.end358 ], [ -95, %do.body393 ], [ 0, %do.body428 ], [ -95, %do.body450 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stub_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @functionality, align 4
  %and = and i32 %0, 259981312
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @stub_find_block(ptr noundef %dev, ptr noundef %chip, i8 noundef zeroext %command, i1 noundef zeroext %create) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %smbus_blocks = getelementptr inbounds %struct.stub_chip, ptr %chip, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %b.0.in = phi ptr [ %smbus_blocks, %entry ], [ %b.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %b.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %b.0 = load ptr, ptr %b.0.in, align 4
  %cmp.not = icmp eq ptr %b.0, %smbus_blocks
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %command2 = getelementptr inbounds %struct.smbus_block_data, ptr %b.0, i32 0, i32 1
  %1 = ptrtoint ptr %command2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %command2, align 4
  %cmp4 = icmp eq i8 %2, %command
  br i1 %cmp4, label %for.body.for.end_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %rb.0 = phi ptr [ null, %for.cond.for.end_crit_edge ], [ %b.0, %for.body.for.end_crit_edge ]
  %cmp11 = icmp eq ptr %rb.0, null
  %3 = and i1 %cmp11, %create
  br i1 %3, label %if.then14, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %for.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #7
  %cmp15 = icmp eq ptr %call.i, null
  br i1 %cmp15, label %if.then14.cleanup_crit_edge, label %if.end18

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.then14
  %command19 = getelementptr inbounds %struct.smbus_block_data, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %command19 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %command, ptr %command19, align 4
  %5 = ptrtoint ptr %smbus_blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %smbus_blocks, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i, ptr noundef %smbus_blocks, ptr noundef %6) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %call.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %smbus_blocks, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %smbus_blocks to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call.i, ptr %smbus_blocks, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end18.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then14.cleanup_crit_edge ], [ %rb.0, %for.end.cleanup_crit_edge ], [ %call.i, %if.end18.cleanup_crit_edge ], [ %call.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !80, !81, !82, !83, !85, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__param_chip_addr, !1, !"__param_chip_addr", i1 false, i1 false}
!1 = !{!"../drivers/i2c/i2c-stub.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_chip_addrtype288, !1, !"__UNIQUE_ID_chip_addrtype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_chip_addr289, !4, !"__UNIQUE_ID_chip_addr289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/i2c-stub.c", i32 37, i32 1}
!5 = !{ptr @__param_functionality, !6, !"__param_functionality", i1 false, i1 false}
!6 = !{!"../drivers/i2c/i2c-stub.c", i32 41, i32 1}
!7 = !{ptr @__UNIQUE_ID_functionalitytype290, !6, !"__UNIQUE_ID_functionalitytype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_functionality291, !9, !"__UNIQUE_ID_functionality291", i1 false, i1 false}
!9 = !{!"../drivers/i2c/i2c-stub.c", i32 42, i32 1}
!10 = !{ptr @__param_bank_reg, !11, !"__param_bank_reg", i1 false, i1 false}
!11 = !{!"../drivers/i2c/i2c-stub.c", i32 47, i32 1}
!12 = !{ptr @__UNIQUE_ID_bank_regtype292, !11, !"__UNIQUE_ID_bank_regtype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_bank_reg293, !14, !"__UNIQUE_ID_bank_reg293", i1 false, i1 false}
!14 = !{!"../drivers/i2c/i2c-stub.c", i32 48, i32 1}
!15 = !{ptr @__param_bank_mask, !16, !"__param_bank_mask", i1 false, i1 false}
!16 = !{!"../drivers/i2c/i2c-stub.c", i32 51, i32 1}
!17 = !{ptr @__UNIQUE_ID_bank_masktype294, !16, !"__UNIQUE_ID_bank_masktype294", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_bank_mask295, !19, !"__UNIQUE_ID_bank_mask295", i1 false, i1 false}
!19 = !{!"../drivers/i2c/i2c-stub.c", i32 52, i32 1}
!20 = !{ptr @__param_bank_start, !21, !"__param_bank_start", i1 false, i1 false}
!21 = !{!"../drivers/i2c/i2c-stub.c", i32 55, i32 1}
!22 = !{ptr @__UNIQUE_ID_bank_starttype296, !21, !"__UNIQUE_ID_bank_starttype296", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_bank_start297, !24, !"__UNIQUE_ID_bank_start297", i1 false, i1 false}
!24 = !{!"../drivers/i2c/i2c-stub.c", i32 56, i32 1}
!25 = !{ptr @__param_bank_end, !26, !"__param_bank_end", i1 false, i1 false}
!26 = !{!"../drivers/i2c/i2c-stub.c", i32 59, i32 1}
!27 = !{ptr @__UNIQUE_ID_bank_endtype298, !26, !"__UNIQUE_ID_bank_endtype298", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_bank_end299, !29, !"__UNIQUE_ID_bank_end299", i1 false, i1 false}
!29 = !{!"../drivers/i2c/i2c-stub.c", i32 60, i32 1}
!30 = !{ptr @__UNIQUE_ID_author315, !31, !"__UNIQUE_ID_author315", i1 false, i1 false}
!31 = !{!"../drivers/i2c/i2c-stub.c", i32 408, i32 1}
!32 = !{ptr @__UNIQUE_ID_description316, !33, !"__UNIQUE_ID_description316", i1 false, i1 false}
!33 = !{!"../drivers/i2c/i2c-stub.c", i32 409, i32 1}
!34 = !{ptr @__UNIQUE_ID_license317, !35, !"__UNIQUE_ID_license317", i1 false, i1 false}
!35 = !{!"../drivers/i2c/i2c-stub.c", i32 410, i32 1}
!36 = !{ptr @___asan_gen_.31, !1, !"__param_str_chip_addr", i1 false, i1 false}
!37 = !{ptr @__param_arr_chip_addr, !1, !"__param_arr_chip_addr", i1 false, i1 false}
!38 = !{ptr @chip_addr, !39, !"chip_addr", i1 false, i1 false}
!39 = !{!"../drivers/i2c/i2c-stub.c", i32 35, i32 23}
!40 = !{ptr @___asan_gen_.28, !6, !"__param_str_functionality", i1 false, i1 false}
!41 = !{ptr @functionality, !42, !"functionality", i1 false, i1 false}
!42 = !{!"../drivers/i2c/i2c-stub.c", i32 40, i32 22}
!43 = !{ptr @___asan_gen_.34, !11, !"__param_str_bank_reg", i1 false, i1 false}
!44 = !{ptr @__param_arr_bank_reg, !11, !"__param_arr_bank_reg", i1 false, i1 false}
!45 = !{ptr @bank_reg, !46, !"bank_reg", i1 false, i1 false}
!46 = !{!"../drivers/i2c/i2c-stub.c", i32 46, i32 11}
!47 = !{ptr @___asan_gen_.37, !16, !"__param_str_bank_mask", i1 false, i1 false}
!48 = !{ptr @__param_arr_bank_mask, !16, !"__param_arr_bank_mask", i1 false, i1 false}
!49 = !{ptr @bank_mask, !50, !"bank_mask", i1 false, i1 false}
!50 = !{!"../drivers/i2c/i2c-stub.c", i32 50, i32 11}
!51 = !{ptr @___asan_gen_.40, !21, !"__param_str_bank_start", i1 false, i1 false}
!52 = !{ptr @__param_arr_bank_start, !21, !"__param_arr_bank_start", i1 false, i1 false}
!53 = !{ptr @bank_start, !54, !"bank_start", i1 false, i1 false}
!54 = !{!"../drivers/i2c/i2c-stub.c", i32 54, i32 11}
!55 = !{ptr @___asan_gen_.43, !26, !"__param_str_bank_end", i1 false, i1 false}
!56 = !{ptr @__param_arr_bank_end, !26, !"__param_arr_bank_end", i1 false, i1 false}
!57 = !{ptr @bank_end, !58, !"bank_end", i1 false, i1 false}
!58 = !{!"../drivers/i2c/i2c-stub.c", i32 58, i32 11}
!59 = !{ptr @.str, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/i2c/i2c-stub.c", i32 359, i32 3}
!61 = !{ptr @.str.1, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.2, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @i2c_stub_init._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @i2c_stub_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.4, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/i2c-stub.c", i32 365, i32 4}
!67 = !{ptr @i2c_stub_init._entry.3, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @i2c_stub_init._entry_ptr.5, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.7, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/i2c-stub.c", i32 370, i32 3}
!71 = !{ptr @i2c_stub_init._entry.6, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @i2c_stub_init._entry_ptr.8, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @stub_chips_nr, !74, !"stub_chips_nr", i1 false, i1 false}
!74 = !{!"../drivers/i2c/i2c-stub.c", i32 87, i32 12}
!75 = !{ptr @stub_chips, !76, !"stub_chips", i1 false, i1 false}
!76 = !{!"../drivers/i2c/i2c-stub.c", i32 86, i32 26}
!77 = !{ptr @.str.9, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/i2c-stub.c", i32 338, i32 2}
!79 = !{ptr @.str.10, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.11, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @i2c_stub_allocate_banks.__UNIQUE_ID_ddebug314, !78, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!82 = !{ptr @.str.12, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @stub_adapter, !84, !"stub_adapter", i1 false, i1 false}
!84 = !{!"../drivers/i2c/i2c-stub.c", i32 309, i32 27}
!85 = !{ptr @smbus_algorithm, !86, !"smbus_algorithm", i1 false, i1 false}
!86 = !{!"../drivers/i2c/i2c-stub.c", i32 304, i32 35}
!87 = !{ptr @.str.13, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/i2c-stub.c", i32 145, i32 3}
!89 = !{ptr @.str.14, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug300, !88, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!91 = !{ptr @.str.15, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/i2c-stub.c", i32 152, i32 4}
!93 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug301, !92, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!94 = !{ptr @.str.16, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/i2c/i2c-stub.c", i32 158, i32 4}
!96 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug302, !95, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!97 = !{ptr @.str.17, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/i2c-stub.c", i32 171, i32 4}
!99 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug303, !98, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!100 = !{ptr @.str.18, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/i2c-stub.c", i32 180, i32 5}
!102 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug304, !101, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!103 = !{ptr @.str.19, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/i2c/i2c-stub.c", i32 186, i32 4}
!105 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug305, !104, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!106 = !{ptr @.str.20, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/i2c/i2c-stub.c", i32 199, i32 4}
!108 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug306, !107, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!109 = !{ptr @.str.21, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i2c/i2c-stub.c", i32 204, i32 4}
!111 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug307, !110, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!112 = !{ptr @.str.22, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/i2c/i2c-stub.c", i32 225, i32 4}
!114 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug308, !113, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!115 = !{ptr @.str.23, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/i2c/i2c-stub.c", i32 233, i32 4}
!117 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug309, !116, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!118 = !{ptr @.str.24, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/i2c/i2c-stub.c", i32 268, i32 4}
!120 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug310, !119, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!121 = !{ptr @.str.25, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/i2c/i2c-stub.c", i32 273, i32 5}
!123 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug311, !122, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!124 = !{ptr @.str.26, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/i2c/i2c-stub.c", i32 282, i32 4}
!126 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug312, !125, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!127 = !{ptr @.str.27, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/i2c/i2c-stub.c", i32 291, i32 3}
!129 = !{ptr @stub_xfer.__UNIQUE_ID_ddebug313, !128, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = !{i64 2148994808, i64 2148994813, i64 2148994826, i64 2148994870, i64 2148994904, i64 2148994925}
